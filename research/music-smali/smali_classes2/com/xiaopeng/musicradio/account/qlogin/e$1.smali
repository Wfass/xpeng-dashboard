.class Lcom/xiaopeng/musicradio/account/qlogin/e$1;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/e;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Lcom/xiaopeng/musicradio/account/qlogin/e;)Lcom/xiaopeng/musicradio/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/g;->dismiss()V

    return-void
.end method
