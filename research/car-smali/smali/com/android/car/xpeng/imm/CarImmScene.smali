.class public Lcom/android/car/xpeng/imm/CarImmScene;
.super Ljava/lang/Object;
.source "CarImmScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarImmScene"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "CarImmScene"

    const-string v1, "CarImmScene created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 9
    const-string v0, "CarImmScene"

    const-string v1, "CarImmScene init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method
