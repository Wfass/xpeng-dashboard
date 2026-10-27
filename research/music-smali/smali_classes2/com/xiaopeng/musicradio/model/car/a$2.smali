.class Lcom/xiaopeng/musicradio/model/car/a$2;
.super Ljava/lang/Object;
.source "IGManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/car/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/car/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/car/a;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/car/a$2;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/car/a$2;->a:Lcom/xiaopeng/musicradio/model/car/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/car/a;->a(Lcom/xiaopeng/musicradio/model/car/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lbdh;->a()Lbdh;

    move-result-object v0

    invoke-virtual {v0}, Lbdh;->c()Lbdg;

    move-result-object v0

    invoke-virtual {v0}, Lbdg;->b()V

    :cond_0
    return-void
.end method
