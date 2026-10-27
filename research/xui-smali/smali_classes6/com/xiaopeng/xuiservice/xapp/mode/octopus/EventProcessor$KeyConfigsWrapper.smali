.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyConfigsWrapper"
.end annotation


# instance fields
.field public mKeyConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mPkgName:Ljava/lang/String;

    .line 418
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;->mKeyConfigs:Ljava/util/List;

    .line 419
    return-void
.end method
