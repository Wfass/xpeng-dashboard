.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;
.super Ljava/lang/Object;
.source "KeyConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigUpload"
.end annotation


# instance fields
.field public configJsonString:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "jsonString"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;->pkgName:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;->configJsonString:Ljava/lang/String;

    .line 135
    return-void
.end method
