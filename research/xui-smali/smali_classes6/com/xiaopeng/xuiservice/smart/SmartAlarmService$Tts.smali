.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tts"
.end annotation


# static fields
.field public static final STRATEGY_DEFAULT:I = 0x0

.field public static final STRATEGY_DELAY:I = 0x1

.field public static final STRATEGY_PERIODIC:I = 0x2


# instance fields
.field public delay:I

.field public dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

.field public hasOnlyOnce:Z

.field public hasShutUp:Z

.field public hasSimpleContent:Z

.field public priority:I

.field public resId:Ljava/lang/String;

.field public resSimpleId:Ljava/lang/String;

.field public strategy:I

.field public value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTtsContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "stringId"    # Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 243
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/util/LocaleStrings;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "contents":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$500()Ljava/util/Random;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v2, v1, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 248
    .end local v1    # "contents":[Ljava/lang/String;
    :cond_1
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTtsContent, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method
