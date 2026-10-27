.class final Landroidx/recyclerview/selection/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/Range$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Range"

.field static final TYPE_PRIMARY:I = 0x0

.field static final TYPE_PROVISIONAL:I = 0x1


# instance fields
.field private final mBegin:I

.field private final mCallbacks:Landroidx/recyclerview/selection/Range$Callbacks;

.field private mEnd:I


# direct methods
.method constructor <init>(ILandroidx/recyclerview/selection/Range$Callbacks;)V
    .locals 1
    .param p2    # Landroidx/recyclerview/selection/Range$Callbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    .line 77
    iput p1, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    .line 78
    iput-object p2, p0, Landroidx/recyclerview/selection/Range;->mCallbacks:Landroidx/recyclerview/selection/Range$Callbacks;

    .line 80
    return-void
.end method

.method private establishRange(II)V
    .locals 3

    .line 95
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "End has already been set."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    iput p1, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    .line 99
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    if-le p1, v0, :cond_1

    .line 101
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    goto :goto_1

    .line 102
    :cond_1
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    if-ge p1, v0, :cond_2

    .line 104
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    .line 106
    :cond_2
    :goto_1
    return-void
.end method

.method private log(ILjava/lang/String;)V
    .locals 3

    .line 179
    if-nez p1, :cond_0

    const-string p1, "PRIMARY"

    goto :goto_0

    :cond_0
    const-string p1, "PROVISIONAL"

    .line 180
    :goto_0
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private reviseAscending(II)V
    .locals 4

    .line 132
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 133
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    .line 134
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    add-int/2addr v0, v1

    iget v3, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    invoke-direct {p0, v0, v3, v2, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    .line 135
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    goto :goto_0

    .line 137
    :cond_0
    add-int/2addr p1, v1

    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    invoke-direct {p0, p1, v0, v2, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    goto :goto_0

    .line 139
    :cond_1
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    if-le p1, v0, :cond_2

    .line 140
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method private reviseDescending(II)V
    .locals 4

    .line 147
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    .line 148
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    .line 149
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    iget v3, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v0, v3, v2, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    .line 150
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    goto :goto_0

    .line 152
    :cond_0
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1, v2, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    goto :goto_0

    .line 154
    :cond_1
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    if-ge p1, v0, :cond_2

    .line 155
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/recyclerview/selection/Range;->updateRange(IIZI)V

    .line 157
    :cond_2
    :goto_0
    return-void
.end method

.method private reviseRange(II)V
    .locals 4

    .line 109
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "End must already be set."

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 110
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    iget v3, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    if-eq v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    const-string v0, "Beging and end point to same position."

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    .line 116
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    iget v1, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    if-le v0, v1, :cond_2

    .line 117
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/Range;->reviseAscending(II)V

    goto :goto_1

    .line 118
    :cond_2
    iget v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    iget v1, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    if-ge v0, v1, :cond_3

    .line 119
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/Range;->reviseDescending(II)V

    .line 123
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    .line 124
    return-void
.end method

.method private updateRange(IIZI)V
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/recyclerview/selection/Range;->mCallbacks:Landroidx/recyclerview/selection/Range$Callbacks;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/recyclerview/selection/Range$Callbacks;->updateForRange(IIZI)V

    .line 171
    return-void
.end method


# virtual methods
.method extendRange(II)V
    .locals 3

    .line 83
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Position cannot be NO_POSITION."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    iget v1, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    iget v2, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/Range;->reviseRange(II)V

    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    iput v0, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/Range;->establishRange(II)V

    .line 92
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range{begin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/selection/Range;->mBegin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/selection/Range;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
