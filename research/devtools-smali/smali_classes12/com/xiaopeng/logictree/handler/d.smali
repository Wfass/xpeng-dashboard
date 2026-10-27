.class public Lcom/xiaopeng/logictree/handler/d;
.super Lcom/xiaopeng/logictree/handler/h;
.source "DisplayHandleResult.java"


# instance fields
.field private Yj:Lcom/xiaopeng/commonfunc/utils/h;

.field private Yk:Ljava/lang/String;

.field private Yl:I

.field private pe:Lcom/xiaopeng/commonfunc/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 39
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/logictree/handler/d;->Yl:I

    .line 47
    new-instance p1, Lcom/xiaopeng/logictree/handler/d$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/d$1;-><init>(Lcom/xiaopeng/logictree/handler/d;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/d;->pe:Lcom/xiaopeng/commonfunc/a/a;

    .line 43
    const-string p1, "DisplayHandleResult"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/d;->CLASS_NAME:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/xiaopeng/commonfunc/utils/h;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->pe:Lcom/xiaopeng/commonfunc/a/a;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/commonfunc/utils/h;-><init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/a;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/d;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/d;->dU(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 118
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->dialog_confirm:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$8hqIgsjQ-JNxHf8lcT1gQlZ_JCI;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$d$8hqIgsjQ-JNxHf8lcT1gQlZ_JCI;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->run_catch_log_activity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$fvNgxHVJ95nW4xiyNIO5nmg-_Q4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$fvNgxHVJ95nW4xiyNIO5nmg-_Q4;-><init>(Lcom/xiaopeng/logictree/handler/d;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "show dialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dX(I)Lcom/xiaopeng/xui/app/c;

    .line 129
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v1, 0x2713

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$Y0AKCwi6x1cnfMwaznQ_XTiSgmM;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$Y0AKCwi6x1cnfMwaznQ_XTiSgmM;-><init>(Lcom/xiaopeng/logictree/handler/d;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    .line 136
    return-void
.end method

.method private a(Lcom/xiaopeng/logictree/a;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    const-string v1, "/data/Log/log0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 150
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 151
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 152
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5a1dd8f3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "tboxlog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v1

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 158
    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    :cond_2
    const-string v3, "/cache/aftersales/tboxlog"

    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/m;->bc(Ljava/lang/String;)V

    .line 155
    const-string v3, "/cache/aftersales/tboxlog"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    nop

    .line 151
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_3
    const-string v3, "/data/Log"

    const-string v4, "main.txt"

    const-string v5, "log[1-7]"

    const/4 v6, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v9

    .line 163
    invoke-static/range {v3 .. v10}, Lcom/xiaopeng/commonfunc/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)Ljava/util/ArrayList;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/xiaopeng/logictree/a;Ljava/lang/String;)V
    .locals 12

    .line 173
    const-string v0, "UNKNOWN"

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->entry_tester_ui:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->entry_check_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->entry_remote_diagnosis:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 185
    :goto_1
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/b;->en()Lcom/xiaopeng/aftersales/AfterSalesManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\n"

    const-string v3, ""

    .line 186
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\r"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    const-string p2, "yyyy-MM-dd HH:mm"

    invoke-static {v4, v5, p2}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v5

    div-long/2addr v5, v8

    const-string p2, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v6, p2}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v8

    const/4 p2, 0x0

    invoke-static {v10, v11, p2}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pF()Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/aftersales/AfterSalesManager;->recordLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dU(Ljava/lang/String;)V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/d;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v2}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Handle Result : %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/logictree/R$string;->data_download_path:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/logictree/R$string;->log_data_transfer_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/logictree/bean/LogicResponseData;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, p1, v4}, Lcom/xiaopeng/logictree/bean/LogicResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_2

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v3, Lcom/xiaopeng/logictree/R$string;->data_udisk_path:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->log_data_transfer_fail:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_1
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$XCQriFKj3q9gPTyCtbb-6YsWoJU;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$XCQriFKj3q9gPTyCtbb-6YsWoJU;-><init>(Lcom/xiaopeng/logictree/handler/d;Ljava/lang/StringBuffer;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 139
    :goto_2
    iget p1, p0, Lcom/xiaopeng/logictree/handler/d;->Yl:I

    if-lez p1, :cond_3

    .line 140
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$X30FGeY01fXD7xxCSeaVHs0xCZE;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$d$X30FGeY01fXD7xxCSeaVHs0xCZE;-><init>(Lcom/xiaopeng/logictree/handler/d;)V

    iget v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yl:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;J)V

    .line 144
    :cond_3
    return-void
.end method

.method public static synthetic lambda$8hqIgsjQ-JNxHf8lcT1gQlZ_JCI(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/logictree/handler/d;->z(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$X30FGeY01fXD7xxCSeaVHs0xCZE(Lcom/xiaopeng/logictree/handler/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/d;->qc()V

    return-void
.end method

.method public static synthetic lambda$XCQriFKj3q9gPTyCtbb-6YsWoJU(Lcom/xiaopeng/logictree/handler/d;Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/d;->a(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public static synthetic lambda$Y0AKCwi6x1cnfMwaznQ_XTiSgmM(Lcom/xiaopeng/logictree/handler/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/d;->qd()V

    return-void
.end method

.method public static synthetic lambda$fvNgxHVJ95nW4xiyNIO5nmg-_Q4(Lcom/xiaopeng/logictree/handler/d;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/logictree/handler/d;->y(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method private synthetic qc()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    const-string v1, "ONE CLICK DIAGNOSIS REBOOT"

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private synthetic qd()V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/d;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/q;->eH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "/data/Log/aftersales"

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/m;->y(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private synthetic y(Lcom/xiaopeng/xui/app/c;I)V
    .locals 2

    .line 124
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/d;->context:Landroid/content/Context;

    const-string v0, "com.xiaopeng.devtools"

    const-string v1, "com.xiaopeng.devtools.view.log.GrabLogActivity"

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/commonfunc/utils/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 126
    return-void
.end method

.method private static synthetic z(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/logictree/handler/d;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_2

    :cond_0
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    const-string v4, "2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/logictree/handler/d;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yl:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    aget-object v0, v0, v3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/xiaopeng/logictree/handler/d;->Yl:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    array-length v0, v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->YB:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 76
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    .line 77
    nop

    .line 80
    :goto_1
    move-object v0, v1

    :goto_2
    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/d;->Yk:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/logictree/handler/d;->b(Lcom/xiaopeng/logictree/a;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/d;->a(Lcom/xiaopeng/logictree/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/commonfunc/utils/h;->setDirection(I)V

    .line 85
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    iget-object v6, p0, Lcom/xiaopeng/logictree/handler/d;->mApplication:Landroid/app/Application;

    const-string v7, "/cache/aftersales"

    .line 86
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 85
    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/commonfunc/utils/h;->a(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/commonfunc/utils/h;->setDirection(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1, v2}, Lcom/xiaopeng/commonfunc/utils/h;->a([Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :goto_3
    monitor-exit p0

    return-object v1

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/h;->destroy()V

    .line 197
    return-void
.end method
