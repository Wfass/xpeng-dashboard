.class Layh$2;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layh;


# direct methods
.method constructor <init>(Layh;)V
    .locals 0

    .line 285
    iput-object p1, p0, Layh$2;->a:Layh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 288
    iget-object v0, p0, Layh$2;->a:Layh;

    invoke-static {v0}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Layh$2;->a:Layh;

    invoke-static {v1}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    iget v2, v0, Layh$a;->a:I

    iget-object v0, p0, Layh$2;->a:Layh;

    invoke-static {v0}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    iget-object v3, v0, Layh$a;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    const/4 v4, 0x0

    iget-object v0, p0, Layh$2;->a:Layh;

    invoke-static {v0}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    iget v5, v0, Layh$a;->c:I

    iget-object v0, p0, Layh$2;->a:Layh;

    invoke-static {v0}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    iget-object v7, v0, Layh$a;->d:Ljava/lang/String;

    iget-object v0, p0, Layh$2;->a:Layh;

    invoke-static {v0}, Layh;->a(Layh;)Layh$a;

    move-result-object v0

    iget v8, v0, Layh$a;->e:I

    const/4 v9, 0x1

    const-string v6, ""

    invoke-static/range {v1 .. v9}, Layh;->a(Layh;ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
