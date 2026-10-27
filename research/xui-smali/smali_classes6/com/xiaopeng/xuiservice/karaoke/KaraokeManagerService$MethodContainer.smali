.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodContainer"
.end annotation


# instance fields
.field methodName:Ljava/lang/String;

.field parameter:[Ljava/lang/Object;

.field parameterType:[Ljava/lang/Class;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()[Ljava/lang/Object;
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->parameter:[Ljava/lang/Object;

    return-object v0
.end method

.method public getParameterType()[Ljava/lang/Class;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->parameterType:[Ljava/lang/Class;

    return-object v0
.end method

.method public setMethodName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;

    .line 1275
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->methodName:Ljava/lang/String;

    .line 1276
    return-object p0
.end method

.method public setParameter([Ljava/lang/Object;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .locals 0
    .param p1, "parameter"    # [Ljava/lang/Object;

    .line 1284
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->parameter:[Ljava/lang/Object;

    .line 1285
    return-object p0
.end method

.method public setParameterType([Ljava/lang/Class;)Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;
    .locals 0
    .param p1, "parameterType"    # [Ljava/lang/Class;

    .line 1293
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$MethodContainer;->parameterType:[Ljava/lang/Class;

    .line 1294
    return-object p0
.end method
