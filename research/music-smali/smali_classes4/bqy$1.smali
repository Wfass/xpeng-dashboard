.class Lbqy$1;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqy;->a(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

.field final synthetic b:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lbqy$1;->b:Lbqy;

    iput-object p2, p0, Lbqy$1;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lbqy$1;->b:Lbqy;

    iget-object v1, p0, Lbqy$1;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-virtual {v0, v1}, Lbqy;->b(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    return-void
.end method
