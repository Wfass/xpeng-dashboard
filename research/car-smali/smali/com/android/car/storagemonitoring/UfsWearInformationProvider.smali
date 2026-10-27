.class public Lcom/android/car/storagemonitoring/UfsWearInformationProvider;
.super Ljava/lang/Object;
.source "UfsWearInformationProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/WearInformationProvider;


# static fields
.field private static DEFAULT_FILE:Ljava/io/File;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/soc/624000.ufshc/health"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->DEFAULT_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->DEFAULT_FILE:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;-><init>(Ljava/io/File;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    .line 52
    return-void
.end method


# virtual methods
.method public load()Lcom/android/car/storagemonitoring/WearInformation;
    .locals 17

    .line 59
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 63
    .local v3, "lifetimeData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 62
    nop

    .line 64
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    goto/16 :goto_5

    .line 68
    :cond_0
    const-string v0, "Health Descriptor\\[Byte offset 0x\\d+\\]: (\\w+) = 0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 71
    .local v4, "infoPattern":Ljava/util/regex/Pattern;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 72
    .local v0, "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    .line 73
    .local v5, "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    .line 75
    .local v6, "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v6

    move-object v6, v5

    move-object v5, v0

    .end local v0    # "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v5, "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v6, "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v8, "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 76
    .local v9, "lifetimeInfo":Ljava/lang/String;
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v9}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 77
    .local v10, "scanner":Ljava/util/Scanner;
    invoke-virtual {v10, v4}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v10}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v11

    .line 81
    .local v11, "match":Ljava/util/regex/MatchResult;
    invoke-interface {v11}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    const/4 v12, 0x2

    if-eq v0, v12, :cond_2

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "name":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 87
    .local v14, "value":Ljava/lang/String;
    const/4 v15, -0x1

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v12, 0x25fe8eaf

    if-eq v0, v12, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "bDeviceLifeTimeEstB"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v15, 0x2

    goto :goto_1

    :pswitch_1
    const-string v0, "bDeviceLifeTimeEstA"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "bPreEOLInfo"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x0

    move v15, v12

    :cond_4
    :goto_1
    packed-switch v15, :pswitch_data_1

    goto :goto_2

    .line 95
    :pswitch_2
    invoke-static {v14}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 92
    :pswitch_3
    invoke-static {v14}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    move-object v5, v0

    .line 93
    goto :goto_2

    .line 89
    :pswitch_4
    invoke-static {v14}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 90
    nop

    .line 101
    :goto_2
    goto :goto_3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v12, "CAR.STORAGE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to decode key "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " didn\'t parse properly"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "lifetimeInfo":Ljava/lang/String;
    .end local v10    # "scanner":Ljava/util/Scanner;
    .end local v11    # "match":Ljava/util/regex/MatchResult;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 104
    :cond_5
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 108
    :cond_6
    new-instance v0, Lcom/android/car/storagemonitoring/WearInformation;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->convertLifetime(I)I

    move-result v2

    .line 109
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->convertLifetime(I)I

    move-result v7

    .line 110
    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->adjustEol(I)I

    move-result v9

    invoke-direct {v0, v2, v7, v9}, Lcom/android/car/storagemonitoring/WearInformation;-><init>(III)V

    .line 108
    return-object v0

    .line 105
    :cond_7
    :goto_4
    const/4 v2, 0x0

    return-object v2

    .line 65
    .end local v4    # "infoPattern":Ljava/util/regex/Pattern;
    .end local v5    # "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v6    # "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v8    # "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_8
    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 60
    .end local v3    # "lifetimeData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "CAR.STORAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v2, 0x0

    return-object v2

    :pswitch_data_0
    .packed-switch -0x3d819f84
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
