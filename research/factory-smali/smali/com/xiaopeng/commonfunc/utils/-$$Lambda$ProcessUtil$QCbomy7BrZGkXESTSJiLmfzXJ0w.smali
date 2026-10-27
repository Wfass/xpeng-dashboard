.class public final synthetic Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$QCbomy7BrZGkXESTSJiLmfzXJ0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Process;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$QCbomy7BrZGkXESTSJiLmfzXJ0w;->f$0:Ljava/lang/Process;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$ProcessUtil$QCbomy7BrZGkXESTSJiLmfzXJ0w;->f$0:Ljava/lang/Process;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->lambda$sendPing$0(Ljava/lang/Process;)V

    return-void
.end method
