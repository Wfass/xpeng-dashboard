.class public final Lcom/xiaopeng/speech/protocol/query/navi/MapConstant$SWITCH_MODE;
.super Ljava/lang/Object;
.source "MapConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/query/navi/MapConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SWITCH_MODE"
.end annotation


# static fields
.field public static final MODE_DISABLE_SWITCH:I = 0x0

.field public static final MODE_ENABLE_SWITCH:I = 0x1

.field public static final MODE_IN_EXPLORE_CALCULATE_PATH:I = 0x6

.field public static final MODE_IN_OVERVIEW:I = 0x3

.field public static final MODE_IN_RESTRICT:I = 0x2

.field public static final MODE_IN_SEARCH_RESULT:I = 0x5

.field public static final MODE_IN_THE_SAME_STATUS:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/query/navi/MapConstant;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/navi/MapConstant;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/query/navi/MapConstant;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapConstant$SWITCH_MODE;->this$0:Lcom/xiaopeng/speech/protocol/query/navi/MapConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
