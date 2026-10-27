.class Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/FlexboxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlexLinesResult"
.end annotation


# instance fields
.field childState:I

.field flexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 1170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    .line 1171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->childState:I

    .line 1172
    return-void
.end method
