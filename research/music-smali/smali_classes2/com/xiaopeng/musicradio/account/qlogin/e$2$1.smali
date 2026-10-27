.class Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaopeng/musicradio/account/qlogin/e$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e$2;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->c:Lcom/xiaopeng/musicradio/account/qlogin/e$2;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->a:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->c:Lcom/xiaopeng/musicradio/account/qlogin/e$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->b:Lcom/xiaopeng/musicradio/account/qlogin/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->a:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;->b:Z

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Lcom/xiaopeng/musicradio/account/qlogin/e;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
