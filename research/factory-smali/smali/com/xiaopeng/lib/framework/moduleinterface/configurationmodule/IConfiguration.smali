.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;
.super Ljava/lang/Object;
.source "IConfiguration.java"


# virtual methods
.method public abstract getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Application;Ljava/lang/String;)V
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appID"
        }
    .end annotation
.end method
