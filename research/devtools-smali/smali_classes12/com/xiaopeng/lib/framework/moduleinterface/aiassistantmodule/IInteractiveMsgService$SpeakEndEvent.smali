.class public Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;
.super Ljava/lang/Object;
.source "IInteractiveMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakEndEvent"
.end annotation


# static fields
.field public static final END_STATE_ERROR:I = 0x1

.field public static final END_STATE_SUCCESS:I


# instance fields
.field public final endState:I

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;->id:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$SpeakEndEvent;->endState:I

    .line 45
    return-void
.end method
