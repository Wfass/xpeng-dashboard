.class public Lcom/xiaopeng/musicradio/vui/b;
.super Ljava/lang/Object;
.source "VuiHelper.java"


# direct methods
.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    .line 86
    new-array v6, v0, [Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_play:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_stop:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 87
    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 10

    const/4 v0, 0x2

    .line 92
    new-array v6, v0, [Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_play:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_stop:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    add-int/lit8 v7, p0, 0x1

    const/4 v8, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v9, p5

    .line 93
    invoke-static/range {v1 .. v9}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;)V
    .locals 8

    add-int/lit8 v6, p0, 0x1

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 26
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZ)V

    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZ)V
    .locals 9

    add-int/lit8 v6, p0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 31
    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 5

    .line 36
    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 40
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x2

    aput-object p1, v2, p6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 41
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p8, :cond_1

    .line 43
    invoke-virtual {p8}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :cond_1
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 47
    sget-object p1, Lbxy;->GROUP:Lbxy;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    if-eq p3, v4, :cond_3

    if-ne p3, p6, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :cond_3
    :goto_0
    if-eqz p4, :cond_5

    .line 57
    move-object p1, p4

    check-cast p1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 58
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p6

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p8, :cond_4

    .line 60
    invoke-virtual {p8}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p6

    if-ltz p6, :cond_4

    .line 61
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 63
    :cond_4
    invoke-interface {p1, p3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    const-string p3, "|"

    if-eqz p7, :cond_6

    .line 68
    check-cast p1, Landroid/view/View;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {p7}, Lbxx;->a()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p3}, Lbxx;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v3, p5, p3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 70
    :cond_6
    check-cast p1, Landroid/view/View;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {p7}, Lbxx;->a()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p3}, Lbxx;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v3, p5, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_2
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    if-eqz p4, :cond_7

    move-object p2, p4

    :cond_7
    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    if-nez p4, :cond_8

    return-void

    .line 77
    :cond_8
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "defaultExecElementId"

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;Z)V
    .locals 8

    add-int/lit8 v6, p0, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;IZ)V

    return-void
.end method
