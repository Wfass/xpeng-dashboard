.class public final Lcom/xiaopeng/musicradio/widget/mvpbase/b;
.super Ljava/lang/Object;
.source "WrapDialogDismissListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/b;->a:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public static a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/musicradio/widget/mvpbase/b;
    .locals 1

    .line 8
    new-instance v0, Lcom/xiaopeng/musicradio/widget/mvpbase/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/b;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/b;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/b;->a:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method
