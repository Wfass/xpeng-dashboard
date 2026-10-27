.class public Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;
.super Ljava/lang/Object;
.source "ConfigurationModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# instance fields
.field private mImpl:Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;->mImpl:Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 16
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;->mImpl:Lcom/xiaopeng/lib/framework/configuration/ConfigurationImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
