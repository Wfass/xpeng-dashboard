.class public Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;
.super Ljava/lang/Object;
.source "ScreenDiagnosisResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorItem"
.end annotation


# instance fields
.field private error_times:I

.field private last_happen:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->this$0:Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->name:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->error_times:I

    .line 66
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->last_happen:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getErrorTimes()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->error_times:I

    return v0
.end method

.method public getLastHappen()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->last_happen:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized increaseErrorTimes()V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->error_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->error_times:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastHappen(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 90
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->last_happen:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/ScreenDiagnosisResult$ErrorItem;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
