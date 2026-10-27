.class public Lbxp;
.super Ljava/lang/Object;
.source "VuiUtils.java"


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

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lbxp;->a:Landroid/util/SparseArray;

    .line 49
    sget-object v0, Lbxp;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lbxp;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lbxp;->a:Landroid/util/SparseArray;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x3

    .line 53
    new-array v5, v1, [Ljava/lang/String;

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    .line 54
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 55
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 56
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    sput-object v5, Lbxp;->b:[Ljava/lang/String;

    .line 58
    new-array v1, v1, [Ljava/lang/String;

    sget v5, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    .line 59
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_stop:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    sput-object v1, Lbxp;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 282
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 283
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

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    .line 286
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 287
    instance-of v2, p0, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 288
    invoke-interface {v1, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 290
    :cond_1
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 291
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 292
    sget-object p0, Lbxy;->BUTTON:Lbxy;

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    .line 293
    sget-object p0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p0}, Lbxx;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 294
    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    .line 335
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCanVoiceControl skipped:canVoiceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 340
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string v1, "canVoiceControl"

    .line 344
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 345
    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static varargs a(Landroid/view/View;[Lbxx;)V
    .locals 4

    .line 157
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 162
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lbxx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 166
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    const-string v3, "|"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    .line 168
    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {p0, v2}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 172
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 173
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->enableViewVuiMode(Z)V

    :goto_1
    return-void
.end method
