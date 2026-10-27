.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$fi0A7FrdyesvdrV9cJ6HbhOU-KE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$fi0A7FrdyesvdrV9cJ6HbhOU-KE;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$fi0A7FrdyesvdrV9cJ6HbhOU-KE;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->onStopWatch()V

    return-void
.end method
