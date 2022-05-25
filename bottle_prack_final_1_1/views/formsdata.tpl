% rebase('layout.tpl',  title=title, year=year, datausers = datausers)
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Lora&display=swap" rel="stylesheet">
<!--Считывание данных из файла в заголовок -->

<div class = "rectanglefinal">
%for i in datausers:
    <h3 class ="fonts"> {{i}} </h3>
%end

</div>
<style>

.rectanglefinal{
    position: absolute;
    width: 875px;
    height: 100%;
    left: 209px;
    top: 150px;

    background: #3ABD57;
    
}
.fonts{
    font-family: 'Pacifico';
    font-style: normal;
    font-weight: 400;
    font-size: 32px;
    line-height: 56px;
    color: #FFFFFF;
}


</style>
