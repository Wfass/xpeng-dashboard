.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;
.super Ljava/lang/Object;
.source "ResponseAdapter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
