.class public Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;
.super Ljava/lang/Object;
.source "ConfigurationImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->getInstance()Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->getInstance()Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->init(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method
