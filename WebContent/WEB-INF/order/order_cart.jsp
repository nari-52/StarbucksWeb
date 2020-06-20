<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="/StarbucksWeb/css/order_cart.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script type="text/javascript" src="/StarbucksWeb/js/order_cart.js"></script>
    <title>스타벅스 코리아</title>
<style type="text/css">

	body {
	    position: absolute;
	    min-height: 100vh;
	    height: auto;
	    width: 100vw;
	    margin: 0 auto;
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	    /* border: 1px solid pink; */
	}
	
	header {
	    position: sticky;
	    display: flex;
	    align-items: center;
	    top: 0;
	    left: 0;
	    height: 10%;
	    background-color: white;
	    box-shadow: 1px 1px 1px 0 #b6b6b65a, 0 1px 1px 0 rgba(155, 155, 155, 0.337);
	    padding-left: 30px;
	}
	
	ul.nav_menu {
	    list-style-type: none;
	    /* border: 2px solid peru; */
	    display: inline-block;
	}
	
	li {
	    display: inline-block;
	    font-weight: 500;
	    font-size: 15pt;
	    margin-right: 15px;
	}
	
	.nav_menu a:active {
	    color: #006633;
	}
	
	img#logo {
	    vertical-align: middle;
	    display: inline-block;
	}                               /* header 끝 */
	
	nav {
	    display: flex;
	    justify-content: flex-end;
	    width: 50%;
	    margin: 30px auto;
	    /* border: 1px solid salmon; */
	}
	
	ul.order_progress li {
	    /* display: inline-block; */
	    display: table-cell;
	    vertical-align: middle;
	    height: 50px;
	    min-width: 80px;
	    background-color: white;
	    color: black;
	    border: 1px solid lightgrey;
	    margin: 0;
	    text-align: center;
	}
	
	ul.order_progress {
	    display: table;
	    margin: 0 auto;
	    /* justify-content: center; */
	    padding-inline-start: 0px;
	}
	
	section {
	    margin: 30px auto;
	    width: 100%;
	    height: auto;
	    padding-bottom: 5rem;
	}
	
	div.card {
	    /* display: flex;
	    align-items: row; */
	    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	    max-width: 500px;
	    max-height: 600px;
	    margin: 50px auto;
	    padding: 30px;
	    border-radius: 2%;
	}      
	
	@media (max-width:650px) {
	    div.card {
	        min-width: 60vw;
	        max-width: 60vw;
	        max-height: 600px;
	        min-height: 40vh;
	        /* border: 2px solid black; */
	        overflow: inherit;
	        font-size: 0.8em;
	    }
	
	    div.card label {
	        font-size: 0.8em;
	        height: 80%;
	    }
	    
	    div.card_detail_container {
	        /* border: 2px solid black; */
	        display: flex;
	        flex-direction: column;
	        align-items: center;
	    }
	
	    div.card_detail_container > img {
	        flex: 1;
	        max-width: 150px;
	        max-height: 180px;
	        /* border: 2px solid black; */
	    }
	
	    div#card_text {
	        display: flex;
	        flex: 3;
	        flex-direction: column;
	        /* border: 1px solid pink; */
	    }
	}
	
	.remove_button {
	    font-size: 2rem;
	    background-color: transparent;  
	    border: none;
	}
	
	div.card_detail_container {
	    display: flex;
	}
	
	h3#menu_name {
		margin: 10px 0;
	}
	
	div.card_detail_container > img {
	    flex: 1;
	    width: 200px;
	    height: 220px;
	}
	
	div#card_text {
	    display: flex;
	    flex: 3;
	    flex-direction: column;
	    align-items: center;
	    /* border: 1px solid pink; */
	}
	
	div.card ul {
	    /* border: 1px solid purple; */
	    text-align: start;
	    padding: 0px
	}
	
	div.card li {
	    display: block;
	}
	
	div.card label {
	    display: inline-block;
	    width: 70px;
	    font-size: 1rem;
	    /* border: 1px solid red; */
	}
	
	input, select{
	    width: 60px;
	    box-sizing:border-box;
	}
	
	span.price {
	    display: block;
	    font-size: 1.3rem;
	    font-weight: bold;
	    /* border: 1px solid red; */
	}
	
	p {
	    display: block;
	    text-align: end;
	    top: 0px;
	    right: 0px;
	    margin: 0;
	}
	
	.move_button {
	    width: 100px;
	    height: 50px;
	    margin: 0 5px 0 5px;
	    background-color: #f4f4f2;
	    border: none;
	    border-radius: 3px;
	    box-shadow: 1px 1px 1px 0 #b6b6b65a, 0 1px 1px 0 rgba(155, 155, 155, 0.337);
	}
	
	button#next {
	    background-color: #006633;
	    color: #fff;
	}
	
	/* section 끝 */
	
	#snackbar {
	    visibility: hidden;
	    min-width: 250px;
	    margin-left: -125px;
	    background-color: #006633;
	    color: #fff;
	    text-align: center;
	    border-radius: 2px;
	    padding: 16px;
	    position: fixed;
	    z-index: 1;
	    left: 50%;
	    bottom: 50px;
	    font-size: 17px;
	}
	
	hr {
	    max-width: 50%; 
	}
	
	h2#total_price {
	    margin-right: 25vw;
	}
	
	#snackbar.show {
	    visibility: visible;
	    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	    animation: fadein 0.5s, fadeout 0.5s 2.5s;
	}
	
	@-webkit-keyframes fadein {
	    from {bottom: 0; opacity: 0;} 
	    to {bottom: 50px; opacity: 1;}
	}
	
	@keyframes fadein {
	    from {bottom: 0; opacity: 0;}
	    to {bottom: 50px; opacity: 1;}
	}
	
	@-webkit-keyframes fadeout {
	    from {bottom: 50px; opacity: 1;} 
	    to {bottom: 0; opacity: 0;}
	}
	
	footer {
	    position: absolute;
	    height: 5rem;
	    bottom: 0;
	    width: 100vw;
	    background-color: rgb(46, 46, 46);
	}

</style>
</head>
<body>
    <header>
        <img id="logo" src="/StarbucksWeb/images/common/starbucks_logo.png" width=80px height=80px />
        <ul class="nav_menu">
            <li><a>ABOUT</a></li>
            <li><a>MENU</a></li>
            <li><a>MYPAGE</a></li>
            <li><a>Q&A</a></li>
        </ul>
    </header>
    <nav><a>HOME</a> > <a>메뉴</a> > <a id="current_nav_menu"></a></nav>
    <section>
        <ul class="order_progress">
            <li id="shoppingCart"><span>커스텀</span></li>
            <li id="storeLocation"><span>매장선택</span></li>
            <li id="order_payment"><span>결제하기</span></li>
            <li id="order_confirmed"><span>결제완료</span></li>
        </ul>
        <div class="items_container">
            
        </div>        
        <div align="center">
            <button class="move_button">뒤로</button>
            <button class="move_button" id="next">다음</button>
        </div>
    </section>
    <div id="snackbar">알림용 스낵바입니다</div>
    <footer></footer>
</body>
</html>