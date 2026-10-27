.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;
.super Ljava/lang/Object;
.source "FaultCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailResult"
.end annotation


# instance fields
.field private level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "title",
            "result",
            "level"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->this$0:Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->mTitle:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->result:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->level:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 100
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->level:I

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->result:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;->mTitle:Ljava/lang/String;

    return-void
.end method
