.class Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;
.super Ljava/lang/Object;
.source "RvDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/g$1;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->notifyDataSetChanged()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->a(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V

    return-void
.end method
