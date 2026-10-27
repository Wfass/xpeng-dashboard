.class Lcom/xiaopeng/musicradio/utils/t$1;
.super Ljava/lang/Object;
.source "DialogReference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/t;->a(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/utils/t;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/utils/t;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/t$1;->a:Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/t$1;->a:Lcom/xiaopeng/musicradio/utils/t;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/t;->a(Lcom/xiaopeng/musicradio/utils/t;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
