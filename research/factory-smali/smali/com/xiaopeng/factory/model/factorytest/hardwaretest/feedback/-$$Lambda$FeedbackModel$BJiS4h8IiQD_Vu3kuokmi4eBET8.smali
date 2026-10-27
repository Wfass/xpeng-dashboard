.class public final synthetic Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$BJiS4h8IiQD_Vu3kuokmi4eBET8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$BJiS4h8IiQD_Vu3kuokmi4eBET8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/-$$Lambda$FeedbackModel$BJiS4h8IiQD_Vu3kuokmi4eBET8;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/feedback/FeedbackModel;->lambda$play$1(Ljava/lang/String;Landroid/media/MediaPlayer;)V

    return-void
.end method
