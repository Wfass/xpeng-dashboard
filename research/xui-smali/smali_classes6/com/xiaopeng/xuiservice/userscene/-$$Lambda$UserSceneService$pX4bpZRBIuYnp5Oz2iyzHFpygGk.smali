.class public final synthetic Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$pX4bpZRBIuYnp5Oz2iyzHFpygGk;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->lambda$postStartActivity$5(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
