.class public Lcom/xiaopeng/musicradio/utils/ao;
.super Ljava/lang/Object;
.source "ModuleApiUtil.java"


# direct methods
.method public static a()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;
    .locals 2

    .line 14
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ao;->a()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    move-result-object v0

    .line 24
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
