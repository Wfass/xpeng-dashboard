.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionPushFile.java"


# instance fields
.field private final source:Ljava/lang/String;

.field private final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->source:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->target:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->source:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->target:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 27
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$qwCWQsc5QytLZN9fyI0gL6h1b6Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$qwCWQsc5QytLZN9fyI0gL6h1b6Y;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", target=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;->target:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
