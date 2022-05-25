% rebase('layout.tpl',  title=title, year=year, datausers = datausers)


<!--Шаблон обратная свзяь -->
<h4> Ждем ваши предложения и рекомендации </h4>


<form action ="/forms" method = "post">
<div class="forma">
    <div class="form-at">
        <div class="validate-input-at w-50" data-validate="Обязательное поле">
            <input class="input-at" type="text"  name = "NAME" placeholder="Ваше имя" />
            <span class="focus-input-at"></span>
        </div>
        <div class="validate-input-at w-50" data-validate="Обязательное поле">
            <input class="input-at" type="text" name = "EMAIL" placeholder="Ваша электронная почта" />
            <span class="focus-input-at"></span>
        </div>
        <div class="validate-input-at" data-validate="Обязательное поле">
            <textarea class="input-at" name = "MESSAGE"  placeholder="Ваше сообщение"></textarea>
            <span class="focus-input-at"></span>
        </div>
        <input type="hidden" name="subject-at" value="Тема формы">
        <button id="submit-at" class="form-at-btn">Отправить</button>

    </div>
    <div class="result-at"></div>
</div>
<div class = "rectanglefinal">

</div>
</form>



<style>
::-webkit-input-placeholder {font-size: 16px;}
::-moz-placeholder {font-size: 16px;}         
:-moz-placeholder {font-size: 16px;}
:-ms-input-placeholder {font-size: 16px;}
:focus::-webkit-input-placeholder {opacity: 0;}    
:focus::-moz-placeholder {opacity: 0;}    
:focus:-moz-placeholder {opacity: 0;}    
:focus:-ms-input-placeholder {opacity: 0;}    
.form-at {
    width: 100%;
    padding: 20px;
    box-sizing: border-box; 
    overflow: hidden;
    font-size: 0;  
    letter-spacing: 0;    
    background: #f9f9f9;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2), 0 10px 18px rgba(0,0,0,0.2);
}
.form-at * {
    box-sizing: border-box;
    font-family: Verdana, sans-serif;    
}
.validate-input-at,
.no-validate-input-at {
    width: 100%;
    position: relative;
    background-color: #fff;
    border: 2px solid #BFE2FF;
    border-radius: 2px;
    margin-bottom: 20px;
}
.validate-input-at.w-50,
.no-validate-input-at.w-50 {
    width: calc(50% - 10px);
    display: inline-block;
}
.validate-input-at.w-50:first-child,
.no-validate-input-at.w-50:first-child {
    margin-right: 20px;
}
.input-at {
    display: block;
    width: 100%;
    background: transparent;
    color: #000;
}
input.input-at {
    height: 50px;
    padding: 0 20px 0 20px;
    font-size: 16px;
    outline: none;
    border: none;  
}
textarea.input-at {
    min-height: 170px;
    padding: 18px 20px;
    font-size: 16px;
    line-height: 22px;
    outline: none;
    border: none;
    resize: none;
}
textarea.input-at:focus, 
input.input-at:focus {
    border-color: transparent;
}
.focus-input-at {
    position: absolute;
    display: block;
    width: calc(100% + 2px);
    height: calc(100% + 2px);
    top: -1px;
    left: -1px;
    pointer-events: none;
    border: 2px solid #337AB7;
    border-radius: 2px;
    visibility: hidden;
    opacity: 0;
    transition: all 0.4s;
    transform: scaleX(1.1) scaleY(1.3);
}
.input-at:focus + .focus-input-at {
    visibility: visible;
    opacity: 1;
    transform: scale(1);
}
.form-at-btn {
    position: relative;
    display: block;
    padding: 0 40px;
    height: 50px;
    background-color: #337AB7;
    border-radius: 2px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    text-transform: uppercase;
    line-height: 1.2;
    transition: all 0.4s;
    margin: 0 auto;
    outline: none;
    border: none;
    cursor: pointer;        
}
.form-at-btn:hover {
    background-color: #333333;
}
.form-at-btn[disabled] {
    opacity: .6;
    cursor: not-allowed;
}
.alert-validate::before {
    content: attr(data-validate);
    position: absolute;
    max-width: 70%;
    background-color: #fff;
    border: 1px solid #c80000;
    border-radius: 2px;
    padding: 4px 25px 4px 10px;
    top: 50%;
    transform: translateY(-50%);
    right: 12px;
    pointer-events: none;
    color: #c80000;
    font-size: 13px;
    line-height: 1.4;
    text-align: left;
    visibility: hidden;
    opacity: 0;
    transition: opacity 0.4s;
}
.alert-validate::after {
    content: "\f129";
    font-family: "FontAwesome";
    display: block;
    position: absolute;
    color: #c80000;
    font-size: 18px;
    font-weight: bold;    
    top: 50%;
    transform: translateY(-50%);
    right: 22px;
}
.alert-validate:hover:before {
    visibility: visible;
    opacity: 1;
}
.error-at {
    color: red;
    padding: 10px 0;
}
.success-at {
    color: green;
    font-size: 28px;
    padding: 20px 0;
    text-align: center;
}
.form-at input[type=checkbox] {
    display:none;
}
.form-at input[type=checkbox] + label {
    display: block;
    position: relative;
    margin: 0 0 20px 34px;
    font-size: 13px;
    line-height: 24px;
    color: #333333;
}
.form-at input[type=checkbox] + label:before {
    box-sizing: border-box;
    position: absolute;
    content: '';
    width: 26px;
    height: 26px;
    line-height: 22px;
    left: -34px;
    border: 2px solid #BFE2FF;
    border-radius: 2px;
}
.form-at input[type=checkbox]:checked + label:before{
    content: '\2714';
    color:#337AB7;
    font-size: 14px;
    text-align: center;
    font-weight: bold;
    border: 2px solid #337AB7;
}
@media (max-width: 768px) {
    .validate-input-at.w-50 {
        width: 100%;
    }
    .validate-input-at.w-50:first-child {
        margin-right: 0;
    }
    .alert-validate::before {
        visibility: visible;
        opacity: 1;
    }
.rectanglefinal{
    position: absolute;
    width: 405px;
    height: 268px;
    left: 1064px;
    top: 659px;

    background: #3ABD57;
    border-radius: 156px;
}
</style>