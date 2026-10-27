.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$1:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$1:Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->lambda$notifyConditionChange$0(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;Z)V

    return-void
.end method
