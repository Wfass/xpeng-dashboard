.class public final synthetic Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$1S-8tXbZsX8MtIqjPdtoDTZwNdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/client/ApiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/client/ApiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$1S-8tXbZsX8MtIqjPdtoDTZwNdc;->f$0:Lcom/xiaopeng/aar/client/ApiManager;

    return-void
.end method


# virtual methods
.method public final onServerStatus(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/aar/client/-$$Lambda$ApiManager$1S-8tXbZsX8MtIqjPdtoDTZwNdc;->f$0:Lcom/xiaopeng/aar/client/ApiManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/aar/client/ApiManager;->lambda$new$0$ApiManager(Ljava/lang/String;I)V

    return-void
.end method
