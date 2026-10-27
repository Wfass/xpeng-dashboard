.class final Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;
.super Ljava/lang/Object;
.source "MVPBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/mvpbase/a$a;->a(Lcom/xiaopeng/musicradio/widget/mvpbase/a;)Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->a(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
