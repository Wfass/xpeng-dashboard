.class Lcom/xiaopeng/musicradio/widget/mvpbase/a$a;
.super Ljava/lang/Object;
.source "MVPBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Lcom/xiaopeng/musicradio/widget/mvpbase/a;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 231
    new-instance p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-static {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/b;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/musicradio/widget/mvpbase/b;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/xiaopeng/musicradio/widget/mvpbase/a;)Landroid/content/BroadcastReceiver;
    .locals 1

    .line 242
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 243
    new-instance p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$2;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$2;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object p0
.end method
