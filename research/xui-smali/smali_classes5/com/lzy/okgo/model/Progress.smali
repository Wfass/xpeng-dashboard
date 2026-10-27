.class public Lcom/lzy/okgo/model/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/model/Progress$Action;
    }
.end annotation


# static fields
.field public static final CURRENT_SIZE:Ljava/lang/String; = "currentSize"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ERROR:I = 0x4

.field public static final EXTRA1:Ljava/lang/String; = "extra1"

.field public static final EXTRA2:Ljava/lang/String; = "extra2"

.field public static final EXTRA3:Ljava/lang/String; = "extra3"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final FINISH:I = 0x5

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final FRACTION:Ljava/lang/String; = "fraction"

.field public static final LOADING:I = 0x2

.field public static final NONE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final REQUEST:Ljava/lang/String; = "request"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TOTAL_SIZE:Ljava/lang/String; = "totalSize"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WAITING:I = 0x1

.field private static final serialVersionUID:J = 0x582cbacdd9906bc3L


# instance fields
.field public currentSize:J

.field public date:J

.field public exception:Ljava/lang/Throwable;

.field public extra1:Ljava/io/Serializable;

.field public extra2:Ljava/io/Serializable;

.field public extra3:Ljava/io/Serializable;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public fraction:F

.field private transient lastRefreshTime:J

.field public priority:I

.field public request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "*+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field

.field public transient speed:J

.field private transient speedBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public tag:Ljava/lang/String;

.field private transient tempSize:J

.field public totalSize:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->date:J

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    .line 93
    return-void
.end method

.method private bufferSpeed(J)J
    .locals 5
    .param p1, "speed"    # J

    .line 122
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    const-wide/16 v0, 0x0

    .line 127
    .local v0, "sum":J
    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    .line 128
    .local v3, "speedTemp":F
    long-to-float v4, v0

    add-float/2addr v4, v3

    float-to-long v0, v4

    .line 129
    .end local v3    # "speedTemp":F
    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    div-long v2, v0, v2

    return-wide v2
.end method

.method public static buildContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "tag"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "url"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "folder"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "filePath"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "fileName"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "fraction"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 155
    const-string v1, "totalSize"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "currentSize"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v1, "status"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "priority"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "date"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v1, "request"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 161
    const-string v1, "extra1"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 162
    const-string v1, "extra2"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 163
    const-string v1, "extra3"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 164
    return-object v0
.end method

.method public static buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fraction"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 170
    const-string v1, "totalSize"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v1, "currentSize"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v1, "status"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v1, "priority"

    iget v2, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v1, "date"

    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    return-object v0
.end method

.method public static changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;
    .locals 15
    .param p0, "progress"    # Lcom/lzy/okgo/model/Progress;
    .param p1, "writeSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "action"    # Lcom/lzy/okgo/model/Progress$Action;

    move-object v0, p0

    move-wide/from16 v1, p3

    .line 100
    move-object/from16 v3, p5

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 101
    iget-wide v4, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    add-long v4, v4, p1

    iput-wide v4, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 102
    iget-wide v4, v0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    add-long v4, v4, p1

    iput-wide v4, v0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 105
    .local v4, "currentTime":J
    iget-wide v6, v0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    sub-long v6, v4, v6

    sget-wide v8, Lcom/lzy/okgo/OkGo;->REFRESH_TIME:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 106
    .local v6, "isNotify":Z
    :goto_0
    if-nez v6, :cond_1

    iget-wide v7, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    cmp-long v7, v7, v1

    if-nez v7, :cond_3

    .line 107
    :cond_1
    iget-wide v7, v0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    sub-long v7, v4, v7

    .line 108
    .local v7, "diffTime":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    const-wide/16 v7, 0x1

    .line 109
    :cond_2
    iget-wide v11, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    long-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    long-to-float v12, v1

    div-float/2addr v11, v12

    iput v11, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 110
    iget-wide v11, v0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    div-long/2addr v11, v7

    invoke-direct {v0, v11, v12}, Lcom/lzy/okgo/model/Progress;->bufferSpeed(J)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 111
    iput-wide v4, v0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    .line 112
    iput-wide v9, v0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    .line 113
    if-eqz v3, :cond_3

    .line 114
    invoke-interface {v3, v0}, Lcom/lzy/okgo/model/Progress$Action;->call(Lcom/lzy/okgo/model/Progress;)V

    .line 117
    .end local v7    # "diffTime":J
    :cond_3
    return-object v0
.end method

.method public static changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;
    .locals 6
    .param p0, "progress"    # Lcom/lzy/okgo/model/Progress;
    .param p1, "writeSize"    # J
    .param p3, "action"    # Lcom/lzy/okgo/model/Progress$Action;

    .line 96
    iget-wide v3, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    return-object v0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 179
    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    .line 180
    .local v0, "progress":Lcom/lzy/okgo/model/Progress;
    const-string v1, "tag"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 181
    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 182
    const-string v1, "folder"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    .line 183
    const-string v1, "filePath"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    .line 184
    const-string v1, "fileName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    .line 185
    const-string v1, "fraction"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 186
    const-string v1, "totalSize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 187
    const-string v1, "currentSize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 188
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    .line 189
    const-string v1, "priority"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    .line 190
    const-string v1, "date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->date:J

    .line 191
    const-string v1, "request"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/base/Request;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    .line 192
    const-string v1, "extra1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    .line 193
    const-string v1, "extra2"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    .line 194
    const-string v1, "extra3"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->toObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    .line 195
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 201
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/lzy/okgo/model/Progress;

    .line 204
    .local v2, "progress":Lcom/lzy/okgo/model/Progress;
    iget-object v3, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget-object v1, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 201
    .end local v2    # "progress":Lcom/lzy/okgo/model/Progress;
    :cond_4
    :goto_1
    return v1
.end method

.method public from(Lcom/lzy/okgo/model/Progress;)V
    .locals 2
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 135
    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 136
    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 137
    iget v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    iput v0, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 138
    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 139
    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    .line 140
    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->tempSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    .line 141
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress{fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
