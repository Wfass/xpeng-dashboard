.class Lcom/xiaopeng/musicradio/account/qlogin/e$2;
.super Ljava/lang/Object;
.source "QLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/account/qlogin/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/e;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->b:Lcom/xiaopeng/musicradio/account/qlogin/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "http://"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 147
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showQrLoginDialog:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QLoginDialog"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_4

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->b:Lcom/xiaopeng/musicradio/account/qlogin/e;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->b(Lcom/xiaopeng/musicradio/account/qlogin/e;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "wx"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->b:Lcom/xiaopeng/musicradio/account/qlogin/e;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/e;->b(Lcom/xiaopeng/musicradio/account/qlogin/e;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "kgwx"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lapu;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/e$2;->a:Ljava/lang/String;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lapv;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :goto_1
    new-instance v2, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/e$2$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/e$2;Landroid/graphics/Bitmap;Z)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
