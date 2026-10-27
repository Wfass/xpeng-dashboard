.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/operator/-$$Lambda$In$MQBz0hAUd_5oL7x2OjhkbhMUQeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/-$$Lambda$In$MQBz0hAUd_5oL7x2OjhkbhMUQeo;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/operator/-$$Lambda$In$MQBz0hAUd_5oL7x2OjhkbhMUQeo;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;->lambda$isMatch$0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
