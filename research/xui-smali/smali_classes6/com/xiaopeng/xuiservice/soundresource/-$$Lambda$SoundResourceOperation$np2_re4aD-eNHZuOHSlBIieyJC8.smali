.class public final synthetic Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;->f$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;->f$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$np2_re4aD-eNHZuOHSlBIieyJC8;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->lambda$doOperationInit$3(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Ljava/util/List;)V

    return-void
.end method
