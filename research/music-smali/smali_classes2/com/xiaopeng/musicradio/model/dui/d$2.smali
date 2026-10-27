.class Lcom/xiaopeng/musicradio/model/dui/d$2;
.super Ljava/lang/Object;
.source "DuiFmModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/d;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/d$2;->a:Lcom/xiaopeng/musicradio/model/dui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lask;->b(Z)V

    .line 81
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->pause()V

    return-void
.end method
