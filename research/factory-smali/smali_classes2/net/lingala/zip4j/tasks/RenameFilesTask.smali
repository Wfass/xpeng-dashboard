.class public Lnet/lingala/zip4j/tasks/RenameFilesTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RenameFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<",
        "Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 32
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 35
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 36
    return-void
.end method

.method private copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J
    .locals 16
    .param p1, "newFileNameBytes"    # [B
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "start"    # J
    .param p5, "totalLengthOfEntry"    # J
    .param p7, "inputStream"    # Ljava/io/RandomAccessFile;
    .param p8, "outputStream"    # Ljava/io/OutputStream;
    .param p9, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p10, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v10, p8

    .line 104
    move-wide/from16 v11, p3

    .line 106
    .local v11, "currentFileCopyPointer":J
    const-wide/16 v6, 0x1a

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object v3, v10

    move-wide v4, v11

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 108
    move-object/from16 v13, p0

    iget-object v1, v13, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    array-length v2, v0

    invoke-virtual {v1, v10, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 110
    const-wide/16 v1, 0x2

    add-long/2addr v11, v1

    .line 111
    const-wide/16 v6, 0x2

    move-object v1, v13

    move-object/from16 v2, p7

    move-wide v4, v11

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 113
    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v11, v1

    .line 116
    sub-long v1, v11, p3

    sub-long v14, p5, v1

    .line 118
    .local v14, "remainingLengthToCopy":J
    move-object v1, v13

    move-object/from16 v2, p7

    move-wide v4, v11

    move-wide v6, v14

    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 121
    return-wide v11
.end method

.method private filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 167
    .local p1, "inputFileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "fileNamesMapToBeChanged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    .local v2, "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    goto :goto_0

    .line 173
    :cond_0
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    .line 174
    .local v3, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v2    # "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    :goto_1
    goto :goto_0

    .line 182
    :cond_3
    return-object v0
.end method

.method private getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "fileHeaderToBeChecked"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    .local p2, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    .local v1, "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "newFileName"    # Ljava/lang/String;
    .param p2, "oldFileName"    # Ljava/lang/String;
    .param p3, "fileNameFromHeaderToBeChanged"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fileNameWithoutOldName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "fileNameWithoutOldName":Ljava/lang/String;
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "old file name was neither an exact match nor a partial match"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V
    .locals 8
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "newFileNameBytes"    # [B
    .param p5, "headersOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 139
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 141
    .local v0, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 148
    array-length v1, p4

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 150
    iget-object v4, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 152
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 153
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 152
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 155
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 157
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 156
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 160
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 161
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v2

    int-to-long v4, p5

    add-long/2addr v2, v4

    .line 160
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 164
    :cond_0
    return-void

    .line 144
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find any header with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 31
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 40
    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v12, v0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 41
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 46
    .local v15, "temporaryFile":Ljava/io/File;
    const/4 v0, 0x0

    move/from16 v16, v0

    .line 47
    .local v16, "successFlag":Z
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-object v11, v0

    .line 48
    .local v11, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v17, 0x0

    :try_start_1
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-direct {v0, v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v10, v0

    .line 47
    .local v10, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    nop

    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "currentFileCopyPointer":J
    :try_start_2
    iget-object v2, v13, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v9, v2

    .line 58
    .local v9, "charset":Ljava/nio/charset/Charset;
    iget-object v2, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v12, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    .line 60
    .local v8, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v18, v0

    .end local v0    # "currentFileCopyPointer":J
    .local v18, "currentFileCopyPointer":J
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 61
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-direct {v12, v0, v14}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v1

    move-object v7, v1

    .line 62
    .local v7, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 64
    iget-object v1, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12, v8, v0, v1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v1

    invoke-virtual {v10}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v20
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    sub-long v20, v1, v20

    .line 65
    .local v20, "lengthToCopy":J
    if-nez v7, :cond_1

    .line 67
    :try_start_4
    iget-object v1, v13, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v22
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    move-object v1, v12

    move-object v2, v11

    move-object v3, v10

    move-wide/from16 v4, v18

    move-object/from16 v23, v6

    move-object/from16 v24, v14

    move-object v14, v7

    move-wide/from16 v6, v20

    .end local v7    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local v24, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v25, v8

    move-object/from16 v8, p2

    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v25, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    move-object/from16 v26, v15

    move-object v15, v9

    move/from16 v9, v22

    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .local v15, "charset":Ljava/nio/charset/Charset;
    .local v26, "temporaryFile":Ljava/io/File;
    :try_start_5
    invoke-virtual/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long v18, v18, v1

    .line 80
    move-object v13, v10

    move-object/from16 v30, v14

    move-object v14, v11

    goto/16 :goto_3

    .line 85
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v14    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "charset":Ljava/nio/charset/Charset;
    .end local v18    # "currentFileCopyPointer":J
    .end local v20    # "lengthToCopy":J
    .end local v25    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v10

    move-object v14, v11

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v26    # "temporaryFile":Ljava/io/File;
    .local v2, "temporaryFile":Ljava/io/File;
    .local v13, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    :goto_1
    move-object/from16 v3, v17

    move-object/from16 v2, v26

    goto/16 :goto_7

    .line 47
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v14    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v13, v10

    move-object v14, v11

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v14    # "inputStream":Ljava/io/RandomAccessFile;
    :goto_2
    move-object/from16 v2, v26

    goto/16 :goto_6

    .line 85
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "temporaryFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v14

    move-object v1, v0

    move-object v13, v10

    move-object v14, v11

    move-object v2, v15

    move-object/from16 v3, v17

    .end local v14    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_7

    .line 47
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v14    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v24, v14

    move-object v1, v0

    move-object v13, v10

    move-object v14, v11

    move-object v2, v15

    .end local v14    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_6

    .line 70
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v7    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    .restart local v14    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    .restart local v18    # "currentFileCopyPointer":J
    .restart local v20    # "lengthToCopy":J
    :cond_1
    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v24, v14

    move-object/from16 v26, v15

    move-object v14, v7

    move-object v15, v9

    .end local v7    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .local v14, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "charset":Ljava/nio/charset/Charset;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :try_start_6
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v1, v2, v3}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 71
    .local v9, "newFileName":Ljava/lang/String;
    invoke-static {v9, v15}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move-object v8, v1

    .line 72
    .local v8, "newFileNameBytes":[B
    array-length v1, v8

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v2

    sub-int v22, v1, v2

    .line 74
    .local v22, "headersOffset":I
    iget-object v1, v13, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 75
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v27
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 74
    move-object v1, v12

    move-object v2, v8

    move-object v3, v0

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-object/from16 v28, v8

    move-object v8, v11

    .end local v8    # "newFileNameBytes":[B
    .local v28, "newFileNameBytes":[B
    move-object/from16 v29, v9

    move-object v9, v10

    .end local v9    # "newFileName":Ljava/lang/String;
    .local v29, "newFileName":Ljava/lang/String;
    move-object v13, v10

    move-object/from16 v10, p2

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    move-object/from16 v30, v14

    move-object v14, v11

    move/from16 v11, v27

    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .local v30, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    invoke-direct/range {v1 .. v11}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    move-wide v7, v1

    .line 77
    .end local v18    # "currentFileCopyPointer":J
    .local v7, "currentFileCopyPointer":J
    move-object v1, v12

    move-object/from16 v2, v25

    move-object v3, v0

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V

    .line 80
    .end local v22    # "headersOffset":I
    .end local v28    # "newFileNameBytes":[B
    .end local v29    # "newFileName":Ljava/lang/String;
    move-wide/from16 v18, v7

    .end local v7    # "currentFileCopyPointer":J
    .restart local v18    # "currentFileCopyPointer":J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->verifyIfTaskIsCancelled()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 81
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v20    # "lengthToCopy":J
    .end local v30    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 60
    move-object v10, v13

    move-object v11, v14

    move-object v9, v15

    move-object/from16 v6, v23

    move-object/from16 v14, v24

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    move-object/from16 v13, p1

    goto/16 :goto_0

    .line 85
    .end local v15    # "charset":Ljava/nio/charset/Charset;
    .end local v18    # "currentFileCopyPointer":J
    .end local v25    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1

    .line 47
    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    .line 85
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v14    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v0

    move-object v13, v10

    move-object v14, v11

    move-object v1, v0

    move-object/from16 v3, v17

    move-object/from16 v2, v26

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v14    # "inputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .line 47
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v14    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    move-object v13, v10

    move-object v14, v11

    move-object v1, v0

    move-object/from16 v2, v26

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v14    # "inputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_6

    .line 85
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "temporaryFile":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object v13, v10

    move-object/from16 v24, v14

    move-object v14, v11

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, v17

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_7

    .line 47
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object v13, v10

    move-object/from16 v24, v14

    move-object v14, v11

    move-object v1, v0

    move-object v2, v15

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_6

    .line 83
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "temporaryFile":Ljava/io/File;
    .local v8, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v9, "charset":Ljava/nio/charset/Charset;
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    .restart local v18    # "currentFileCopyPointer":J
    :cond_2
    move-object/from16 v25, v8

    move-object v13, v10

    move-object/from16 v24, v14

    move-object/from16 v26, v15

    move-object v15, v9

    move-object v14, v11

    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .local v15, "charset":Ljava/nio/charset/Charset;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :try_start_8
    iget-object v0, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, v1, v13, v15}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 84
    const/4 v1, 0x1

    .line 85
    .end local v15    # "charset":Ljava/nio/charset/Charset;
    .end local v16    # "successFlag":Z
    .end local v18    # "currentFileCopyPointer":J
    .end local v25    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v1, "successFlag":Z
    :try_start_9
    invoke-virtual {v13}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v2, v26

    move/from16 v16, v1

    move-object/from16 v3, v17

    move-object v1, v0

    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_a

    .line 47
    .end local v2    # "temporaryFile":Ljava/io/File;
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v2, v26

    move-object/from16 v17, v0

    move/from16 v16, v1

    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_9

    .line 85
    .end local v2    # "temporaryFile":Ljava/io/File;
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :goto_4
    :try_start_a
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    .line 86
    .end local v14    # "inputStream":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v0

    move-object/from16 v2, v26

    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    goto/16 :goto_c

    .end local v2    # "temporaryFile":Ljava/io/File;
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :goto_5
    iget-object v0, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-virtual {v12, v1, v0, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 87
    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    nop

    .line 89
    return-void

    .line 85
    .end local v1    # "successFlag":Z
    .end local v2    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v14    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v16    # "successFlag":Z
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :catchall_7
    move-exception v0

    move-object/from16 v2, v26

    move-object v1, v0

    move-object/from16 v3, v17

    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    goto :goto_7

    .line 47
    .end local v2    # "temporaryFile":Ljava/io/File;
    .restart local v26    # "temporaryFile":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v2, v26

    move-object v1, v0

    .end local v26    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    goto :goto_6

    .line 85
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "temporaryFile":Ljava/io/File;
    :catchall_8
    move-exception v0

    move-object v13, v10

    move-object/from16 v24, v14

    move-object v2, v15

    move-object v14, v11

    move-object v1, v0

    move-object/from16 v3, v17

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .line 47
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catch_7
    move-exception v0

    move-object v13, v10

    move-object/from16 v24, v14

    move-object v2, v15

    move-object v14, v11

    move-object v1, v0

    .end local v10    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .restart local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 85
    :catchall_9
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    :goto_7
    if-eqz v3, :cond_3

    :try_start_c
    invoke-virtual {v13}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v4, v0

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_3
    invoke-virtual {v13}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    :goto_8
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 47
    .end local v13    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catch_9
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_9

    .line 85
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catchall_a
    move-exception v0

    move-object/from16 v24, v14

    move-object v2, v15

    move-object v14, v11

    move-object v1, v0

    move-object/from16 v3, v17

    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_a

    .line 47
    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object/from16 v24, v14

    move-object v2, v15

    move-object v14, v11

    move-object/from16 v17, v0

    .end local v11    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v15    # "temporaryFile":Ljava/io/File;
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .local v14, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_9
    :try_start_e
    throw v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 85
    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v17

    :goto_a
    if-eqz v3, :cond_4

    :try_start_f
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_4
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    :goto_b
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 86
    .end local v14    # "inputStream":Ljava/io/RandomAccessFile;
    :catchall_c
    move-exception v0

    move/from16 v1, v16

    goto :goto_c

    .end local v2    # "temporaryFile":Ljava/io/File;
    .end local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "temporaryFile":Ljava/io/File;
    :catchall_d
    move-exception v0

    move-object/from16 v24, v14

    move-object v2, v15

    move/from16 v1, v16

    .end local v14    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "temporaryFile":Ljava/io/File;
    .end local v16    # "successFlag":Z
    .restart local v1    # "successFlag":Z
    .restart local v2    # "temporaryFile":Ljava/io/File;
    .restart local v24    # "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_c
    iget-object v3, v12, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v12, v1, v3, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 87
    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 98
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->RENAME_FILE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
