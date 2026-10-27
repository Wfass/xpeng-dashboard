.class public Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
.super Ljava/lang/Object;
.source "DiffMatchPatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Patch"
.end annotation


# instance fields
.field public diffs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation
.end field

.field public length1:I

.field public length2:I

.field public start1:I

.field public start2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2365
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2366
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 2376
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "coords1":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2378
    .end local v0    # "coords1":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    if-ne v0, v1, :cond_1

    .line 2379
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2381
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2383
    .restart local v0    # "coords1":Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    if-nez v2, :cond_2

    .line 2384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "coords2":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 2385
    .end local v1    # "coords2":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    if-ne v2, v1, :cond_3

    .line 2386
    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2388
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2390
    .restart local v1    # "coords2":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2391
    .local v2, "text":Ljava/lang/StringBuilder;
    const-string v3, "@@ -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @@\n"

    .line 2392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2395
    .local v4, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x2b

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 2403
    :pswitch_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2400
    :pswitch_1
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2401
    goto :goto_5

    .line 2397
    :pswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2398
    nop

    .line 2407
    :goto_5
    :try_start_0
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 2408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    nop

    .line 2413
    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_4

    .line 2409
    .restart local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :catch_0
    move-exception v3

    .line 2411
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/Error;

    const-string v6, "This system does not support UTF-8."

    invoke-direct {v5, v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2414
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
