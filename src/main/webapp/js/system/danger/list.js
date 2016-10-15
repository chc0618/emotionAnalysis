var pageii = null;
var grid = null;
$(function () {
    grid = lyGrid({
        id: 'paging',
        l_column: [{
            colkey: "id",
            name: "id",
            width: "50px",
            hide: true
        }, {
            colkey: "name",
            name: "名称"
        },  {
            colkey: "happenTime",
            name: "发生时间",
        renderData: function (rowindex, data, rowdata, column) {
            return new Date(data).format("yyyy-MM-dd");
        }
    }, {
        colkey: "endTime",
        name: "结束时间"
    }],
    jsonUrl: rootPath + '/danger/findByPage.shtml',
        checkbox: true
    });

    $("#search").click("click", function () {// 绑定查询按扭
        var searchParams = $("#searchForm").serializeJson();
        grid.setOptions({
            data: searchParams
        });
    });

    $("#addFun").click("click", function () {
        addFun();
    });
    $("#editFun").click("click", function () {
        editFun();
    });
    $("#delFun").click("click", function () {
        delFun();
    });
    $("#auditFun").click("click", function () {
        auditFun();
    });
});

function editFun() {
    var cbox = grid.getSelectedCheckbox();
    if (cbox.length > 1 || cbox == "") {
        layer.msg("只能选中一个");
        return;
    }
    pageii = layer.open({
        title: "编辑",
        type: 2,
        area: ["600px", "80%"],
        content: rootPath + '/danger/' + cbox + '/edit.shtml'
    });
}
function addFun() {
    pageii = layer.open({
        title: "新增",
        type: 2,
        area: ["600px", "80%"],
        content: rootPath + '/danger/add.shtml'
    });
}
function delFun() {
    var cbox = grid.getSelectedCheckbox();
    if (cbox.length > 1 || cbox == "") {
        layer.msg("只能选中一个");
        return;
    }
    layer.confirm('是否删除？', function (index) {
        var url = rootPath + '/danger/' + cbox + '/delete.shtml';
        var s = CommnUtil.ajax(url, {}, "json");
        if (s == "success") {
            layer.msg('删除成功');
            grid.loadData();
        } else {
            layer.msg('删除失败');
        }
    });
}

function auditFun() {
    var cbox = grid.getSelectedCheckbox();
    if (cbox.length > 1 || cbox == "") {
        layer.msg("只能选中一个");
        return;
    }
    var url = rootPath + '/danger/' + cbox + '/check.shtml';
    var s = CommnUtil.ajax(url, {}, "json");
    if (!s) {
        layer.msg('已审核过，无需再审！');
        grid.loadData();
        return;
    }
    pageii = layer.open({
        title: "审核",
        type: 2,
        area: ["600px", "20%"],
        content: rootPath + '/danger/' + cbox + '/audit.shtml'
    });
}