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
    .locals 13

    .line 79
    new-instance v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v1, "BUILD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v3, "UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v3, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v5, "ADD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v7, "REMOVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->REMOVE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v7, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v9, "UPDATEATTRIBUTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    new-instance v9, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const-string v11, "UPDATERECYCLEVIEWITEM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATERECYCLEVIEWITEM:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 78
    sput-object v11, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->$VALUES:[Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

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
