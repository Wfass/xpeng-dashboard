.class public final enum Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;
.super Ljava/lang/Enum;
.source "ActionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/action/ActionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

.field public static final enum MainThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

.field public static final enum WorkerThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    const/4 v1, 0x0

    const-string v2, "WorkerThread"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->WorkerThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    new-instance v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    const/4 v2, 0x1

    const-string v3, "MainThread"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->MainThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->WorkerThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->MainThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;
    .locals 1

    .line 46
    const-class v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->$VALUES:[Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    return-object v0
.end method
