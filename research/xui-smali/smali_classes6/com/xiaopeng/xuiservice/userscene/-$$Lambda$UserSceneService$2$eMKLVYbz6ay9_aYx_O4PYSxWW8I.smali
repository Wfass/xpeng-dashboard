.class public final synthetic Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;

    iput p2, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;->f$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/-$$Lambda$UserSceneService$2$eMKLVYbz6ay9_aYx_O4PYSxWW8I;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;->lambda$onActivityChanged$0(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$2;I)V

    return-void
.end method
