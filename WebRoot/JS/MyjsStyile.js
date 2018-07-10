/**
 * 
 */function ale()
{//这个基本没有什么说的，就是弹出一个提醒的对话框
    alert("我敢保证，你现在用的是演示一");
}
function firm()
{//利用对话框返回的值 （true 或者 false）
    if(confirm("你确信要转去 天轰穿的博客？"))
    {//如果是true ，那么就把页面转向thcjp.cnblogs.com
        location.href="http://thcjp.cnblogs.com";
    }
    else
    {//否则说明下了，赫赫
        alert("你按了取消，那就是返回false");
    }
}
function prom()
{
    var name=prompt("请输入您的名字","");//将输入的内容赋给变量 name ，
    //这里需要注意的是，prompt有两个参数，前面是提示的话，后面是当对话框出来后，在对话框里的默认值
    if(name)//如果返回的有内容
    {
        alert("欢迎您："+ name)
    }
}