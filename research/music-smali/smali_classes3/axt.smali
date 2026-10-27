.class public Laxt;
.super Ljava/lang/Object;
.source "MineVuiUtils.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Laxt;->a:Landroid/util/SparseArray;

    .line 51
    sget-object v0, Laxt;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Laxt;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Laxt;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x3

    .line 55
    new-array v5, v1, [Ljava/lang/String;

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    .line 56
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 57
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 58
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    sput-object v5, Laxt;->b:[Ljava/lang/String;

    .line 60
    new-array v1, v1, [Ljava/lang/String;

    sget v5, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    .line 61
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    sput-object v1, Laxt;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    .line 184
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->y(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .line 265
    sget-object p0, Laxt;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 266
    sget-object p2, Laxt;->c:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 2

    .line 382
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 387
    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 388
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    return-void
.end method

.method public static a(Landroid/view/View;ILjava/lang/String;)V
    .locals 5

    .line 245
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    instance-of v2, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v2, :cond_0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListPlayStatus skipped:tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MineVuiUtils"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 251
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    const-string p2, ""

    .line 252
    invoke-interface {v1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 253
    instance-of p2, p0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 254
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 256
    :cond_1
    invoke-interface {v1, v2}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    .line 257
    sget-object p2, Lbyb;->LEVEL2:Lbyb;

    invoke-interface {v1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPriority(Lbyb;)V

    .line 258
    invoke-static {p0, v2}, Laxt;->c(Landroid/view/View;Z)V

    .line 259
    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->tag_vui_play_all:I

    const-string v1, "1"

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 260
    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->tag_vui_current_text:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 261
    invoke-static {p1}, Laxu;->d(I)I

    move-result p1

    invoke-static {v0, p0, p1}, Laxt;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 287
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVuiLabel skipped:tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineVuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 291
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 292
    instance-of v2, p0, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 293
    invoke-interface {v1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 296
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 297
    sget-object p0, Lbxy;->BUTTON:Lbxy;

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    .line 298
    sget-object p0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p0}, Lbxx;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 299
    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Lbxy;)V
    .locals 1

    .line 146
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 150
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 270
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVuiLabel skipped:tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineVuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 274
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 275
    instance-of v2, p0, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 276
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 278
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 279
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 281
    :cond_2
    sget-object p0, Lbxy;->BUTTON:Lbxy;

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    .line 282
    sget-object p0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p0}, Lbxx;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 283
    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-static {p1, p2}, Laxu;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .line 138
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 142
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 5

    .line 202
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayStatus skipped:tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineVuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    .line 207
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    const-string p2, ""

    .line 210
    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 211
    instance-of p2, p0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 212
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 214
    :cond_2
    invoke-interface {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    .line 215
    invoke-static {v1, p0, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public static varargs a(Landroid/view/View;[Lbxx;)V
    .locals 4

    .line 162
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 167
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lbxx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 171
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    const-string/jumbo v3, "|"

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    .line 173
    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-interface {p0, v2}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 177
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 178
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    :goto_1
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    .line 197
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 198
    invoke-static {p0, p4}, Laxt;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-static {p0, p1}, Laqy;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_vui_play_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;Lbyf;)Z
    .locals 5

    .line 83
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p0}, Laxt;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {p1, p1}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 85
    invoke-static {p1}, Laxt;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_vui_current_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClickVuiPlayAll:currentText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MineVuiUtils"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v3, Laxt;->b:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Laxt;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object v1, Laxt;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    sget-object v1, Laxt;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p0, p1}, Laxt;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_1
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->vui_already_pause:I

    invoke-static {p0, v2, p1}, Laxt;->a(Landroid/view/View;II)V

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    sget-object v3, Laxt;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->vui_already_play:I

    invoke-static {p0, v1, p1}, Laxt;->a(Landroid/view/View;II)V

    goto :goto_1

    .line 92
    :cond_3
    invoke-static {p0, p1}, Laxt;->b(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 73
    sget-object v1, Laxt;->b:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 74
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 108
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_vui_value:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 109
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    .line 154
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 158
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLayoutLoadable(Z)V

    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 2

    .line 365
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFeedback skipped:hasFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineVuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 370
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string v1, "hasFeedback"

    .line 374
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 375
    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
