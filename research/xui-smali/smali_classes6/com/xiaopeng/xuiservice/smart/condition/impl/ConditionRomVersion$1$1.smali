.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;
.source "ConditionRomVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1;
    .param p2, "name"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion$1$1;->fetch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/VersionUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
