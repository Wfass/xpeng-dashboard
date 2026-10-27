.class Lcom/xiaopeng/musicradio/widget/f$1;
.super Ljava/lang/Object;
.source "MusicXDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/f;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/f$1;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/f$1;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/f;->a(Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method
