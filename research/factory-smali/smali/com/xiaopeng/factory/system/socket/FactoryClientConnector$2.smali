.class Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$2;
.super Ljava/lang/Object;
.source "FactoryClientConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->creatConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$2;->this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector$2;->this$0:Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    invoke-static {v0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->access$100(Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
