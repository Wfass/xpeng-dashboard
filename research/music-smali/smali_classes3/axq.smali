.class public Laxq;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    .line 16
    :cond_0
    instance-of v2, p0, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;

    if-eqz v2, :cond_1

    .line 17
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;

    goto :goto_0

    .line 18
    :cond_1
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 19
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez v1, :cond_3

    if-nez p0, :cond_0

    :cond_3
    return-object v1
.end method
