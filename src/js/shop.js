import './library/jquery.js';
import { cookie } from './library/cookie.js';

let shop = cookie.get('shop');
if (shop) {
    shop = JSON.parse(shop); // 有cookie数据才需要转换

    let idList = shop.map(elm => elm.id).join(); // 获得所有id

    $.ajax({
        type: "get",
        url: "../../interface/getItems.php",
        data: {
            idList
        },
        dataType: "json",
        success: function(res) {
            let temp = '';
            res.forEach((elm, i) => {
                let picture = JSON.parse(elm.picture);

                // 让ajax获得的数据结果id与cookie中的id  一一对应
                // 索引不同

                // 从购物车的cookie数据中去选择当前遍历的数据
                let arr = shop.filter(val => val.id == elm.id);

                temp += `<li class="item">
                <div class="p-check">
                    <input type="checkbox" id="pro-1">
                </div>
                <div class="p-pic">
                    <img src="../${picture[0].src}" alt="">
                </div>
                <div class="p-title">
                    ${elm.title}
                </div>
                <div class="p-num">
                    <a href="javascript:;" class="ninus">-</a>
                    <input type="text" value="${arr[0].num}" max="${elm.num}" min="1" id="num">
                    <a href="javascript:;" class="plus">+</a>
                </div>
                <div class="p-price">
                    单价:${parseFloat(elm.price).toFixed(2)}
                </div>
                <div class="p-sum">
                    总价:${(elm.price*arr[0].num).toFixed(2)};
                </div>
                <div class="p-del">
                    <a href="javascript:;" class="del" data-id="${elm.id}">删除</a>
                </div>
            </li>`;
            });
            // 删除
            $('.prolist').append(temp).find('.del').on('click', function() {
                let shop2 = shop.filter(el => el.id != $(this).attr('data-id')); // 获得id不匹配的元素
                cookie.set('shop', JSON.stringify(shop2), 1); // 将不匹配的元素从新写进cookie
                location.reload();
            });

            $(function() {
                let t = $('#num'); //数量
                let prices = $('.p-price').html(); //单件


                function total() {
                    let total = 0;
                    total = t.val() * prices;
                    $(".p-sum").html(total);
                    console.log(total)
                }
                // 加
                $('.plus').on('click', function() {
                    if (t.val() < 100) {
                        t.val(parseInt(t.val()) + 1);
                    } else {
                        t.val(1)
                    }
                    total();
                });
                //  减
                $('.ninus').on('click', function() {
                    if (t.val() <= 1) {
                        t.val(1)
                    } else {
                        t.val(parseInt(t.val()) - 1);
                    }
                    total();
                });
            });

        }
    });

}