.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfig"
.end annotation


# instance fields
.field public canDialog:I

.field public canLaunch:I

.field public canMove:I

.field public pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    .line 512
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canMove:I

    .line 513
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canDialog:I

    return-void
.end method
