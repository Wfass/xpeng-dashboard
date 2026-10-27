.class public Lcom/xiaopeng/commonfunc/utils/r;
.super Ljava/lang/Object;
.source "UIUtil.java"


# direct methods
.method public static b(Landroid/content/Context;I)V
    .locals 1

    .line 188
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public static bd(Ljava/lang/String;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$1OiKX_Tp8QRTMErJap3Z_ZLaCfk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$1OiKX_Tp8QRTMErJap3Z_ZLaCfk;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private static synthetic be(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    return-void
.end method

.method private static synthetic c(Landroid/content/Context;I)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$1OiKX_Tp8QRTMErJap3Z_ZLaCfk(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/r;->be(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$caF3cLg3h6WUnAV4kFNQC47dD7I(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/r;->c(Landroid/content/Context;I)V

    return-void
.end method
