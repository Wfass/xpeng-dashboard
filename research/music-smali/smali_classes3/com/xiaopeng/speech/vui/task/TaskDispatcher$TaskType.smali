.class public final enum Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
.super Ljava/lang/Enum;
.source "TaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/task/TaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field public static final enum UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 79
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v1, 0x0

    const-string v2, "BUILD"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v2, 0x1

    const-string v3, "UPDATE"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v3, 0x2

    const-string v4, "ADD"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v4, 0x3

    const-string v5, "REMOVE"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v5, 0x4

    const-string v6, "UPDATEATTRIBUTE"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v6, 0x5

    const-string v7, "UPDATERECYCLEVIEWITEM"

    invoke-direct {v0, v7, v6}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v0, 0x6

    .line 78
    new-array v0, v0, [Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    sget-object v7, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->$VALUES:[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .locals 1

    .line 78
    const-class v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .locals 1

    .line 78
    sget-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->$VALUES:[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    return-object v0
.end method
